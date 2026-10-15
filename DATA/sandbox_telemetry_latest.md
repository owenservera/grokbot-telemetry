# sandbox_telemetry_parse — 2026-10-15 06:28:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=711818 lines=1579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1574 |
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
| `chromeBrowserPssKb` | {'int': 1574} |
| `chromeGpuPssKb` | {'int': 1574} |
| `chromeOtherPssKb` | {'int': 1574} |
| `chromeProcesses` | {'int': 1574} |
| `chromeProfiles` | {'int': 1574} |
| `chromeRendererMaxPssKb` | {'int': 1574} |
| `chromeRendererPssKb` | {'int': 1574} |
| `chromeRenderers` | {'int': 1574} |
| `chromeTabs` | {'int': 1574} |
| `chromeTabsProbedProfiles` | {'int': 1574} |
| `chromeUtilityPssKb` | {'int': 1574} |
| `desktopPssKb` | {'int': 1574} |
| `hostPssKb` | {'int': 1574} |
| `kind` | {'str': 1574} |
| `memAvailableKb` | {'int': 1574} |
| `memTotalKb` | {'int': 1574} |
| `otherPssKb` | {'int': 1574} |
| `processes` | {'int': 1574} |
| `pssFallbackProcesses` | {'int': 1574} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
