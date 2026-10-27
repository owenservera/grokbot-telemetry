# sandbox_telemetry_parse — 2026-10-27 02:25:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=268992 lines=598
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 593 |
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
| `chromeBrowserPssKb` | {'int': 593} |
| `chromeGpuPssKb` | {'int': 593} |
| `chromeOtherPssKb` | {'int': 593} |
| `chromeProcesses` | {'int': 593} |
| `chromeProfiles` | {'int': 593} |
| `chromeRendererMaxPssKb` | {'int': 593} |
| `chromeRendererPssKb` | {'int': 593} |
| `chromeRenderers` | {'int': 593} |
| `chromeTabs` | {'int': 593} |
| `chromeTabsProbedProfiles` | {'int': 593} |
| `chromeUtilityPssKb` | {'int': 593} |
| `desktopPssKb` | {'int': 593} |
| `hostPssKb` | {'int': 593} |
| `kind` | {'str': 593} |
| `memAvailableKb` | {'int': 593} |
| `memTotalKb` | {'int': 593} |
| `otherPssKb` | {'int': 593} |
| `processes` | {'int': 593} |
| `pssFallbackProcesses` | {'int': 593} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
