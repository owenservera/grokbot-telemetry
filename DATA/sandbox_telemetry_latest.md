# sandbox_telemetry_parse — 2026-10-15 21:19:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1060762 lines=2351
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2346 |
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
| `chromeBrowserPssKb` | {'int': 2346} |
| `chromeGpuPssKb` | {'int': 2346} |
| `chromeOtherPssKb` | {'int': 2346} |
| `chromeProcesses` | {'int': 2346} |
| `chromeProfiles` | {'int': 2346} |
| `chromeRendererMaxPssKb` | {'int': 2346} |
| `chromeRendererPssKb` | {'int': 2346} |
| `chromeRenderers` | {'int': 2346} |
| `chromeTabs` | {'int': 2346} |
| `chromeTabsProbedProfiles` | {'int': 2346} |
| `chromeUtilityPssKb` | {'int': 2346} |
| `desktopPssKb` | {'int': 2346} |
| `hostPssKb` | {'int': 2346} |
| `kind` | {'str': 2346} |
| `memAvailableKb` | {'int': 2346} |
| `memTotalKb` | {'int': 2346} |
| `otherPssKb` | {'int': 2346} |
| `processes` | {'int': 2346} |
| `pssFallbackProcesses` | {'int': 2346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
