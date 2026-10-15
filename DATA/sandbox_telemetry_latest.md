# sandbox_telemetry_parse — 2026-10-15 04:29:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=665714 lines=1477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1472 |
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
| `chromeBrowserPssKb` | {'int': 1472} |
| `chromeGpuPssKb` | {'int': 1472} |
| `chromeOtherPssKb` | {'int': 1472} |
| `chromeProcesses` | {'int': 1472} |
| `chromeProfiles` | {'int': 1472} |
| `chromeRendererMaxPssKb` | {'int': 1472} |
| `chromeRendererPssKb` | {'int': 1472} |
| `chromeRenderers` | {'int': 1472} |
| `chromeTabs` | {'int': 1472} |
| `chromeTabsProbedProfiles` | {'int': 1472} |
| `chromeUtilityPssKb` | {'int': 1472} |
| `desktopPssKb` | {'int': 1472} |
| `hostPssKb` | {'int': 1472} |
| `kind` | {'str': 1472} |
| `memAvailableKb` | {'int': 1472} |
| `memTotalKb` | {'int': 1472} |
| `otherPssKb` | {'int': 1472} |
| `processes` | {'int': 1472} |
| `pssFallbackProcesses` | {'int': 1472} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
