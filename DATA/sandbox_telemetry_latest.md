# sandbox_telemetry_parse — 2026-10-14 07:34:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=166254 lines=372
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 367 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 367} |
| `chromeGpuPssKb` | {'int': 367} |
| `chromeOtherPssKb` | {'int': 367} |
| `chromeProcesses` | {'int': 367} |
| `chromeProfiles` | {'int': 367} |
| `chromeRendererMaxPssKb` | {'int': 367} |
| `chromeRendererPssKb` | {'int': 367} |
| `chromeRenderers` | {'int': 367} |
| `chromeTabs` | {'int': 367} |
| `chromeTabsProbedProfiles` | {'int': 367} |
| `chromeUtilityPssKb` | {'int': 367} |
| `desktopPssKb` | {'int': 367} |
| `hostPssKb` | {'int': 367} |
| `kind` | {'str': 367} |
| `memAvailableKb` | {'int': 367} |
| `memTotalKb` | {'int': 367} |
| `otherPssKb` | {'int': 367} |
| `processes` | {'int': 367} |
| `pssFallbackProcesses` | {'int': 367} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
