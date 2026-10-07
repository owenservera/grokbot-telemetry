# sandbox_telemetry_parse — 2026-10-07 08:32:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=911461 lines=2003
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1998 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1998} |
| `chromeGpuPssKb` | {'int': 1998} |
| `chromeOtherPssKb` | {'int': 1998} |
| `chromeProcesses` | {'int': 1998} |
| `chromeProfiles` | {'int': 1998} |
| `chromeRendererMaxPssKb` | {'int': 1998} |
| `chromeRendererPssKb` | {'int': 1998} |
| `chromeRenderers` | {'int': 1998} |
| `chromeTabs` | {'int': 1998} |
| `chromeTabsProbedProfiles` | {'int': 1998} |
| `chromeUtilityPssKb` | {'int': 1998} |
| `desktopPssKb` | {'int': 1998} |
| `hostPssKb` | {'int': 1998} |
| `kind` | {'str': 1998} |
| `memAvailableKb` | {'int': 1998} |
| `memTotalKb` | {'int': 1998} |
| `otherPssKb` | {'int': 1998} |
| `processes` | {'int': 1998} |
| `pssFallbackProcesses` | {'int': 1998} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
