# sandbox_telemetry_parse — 2026-11-23 22:28:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2017903 lines=4474
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4459 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4459} |
| `chromeGpuPssKb` | {'int': 4459} |
| `chromeOtherPssKb` | {'int': 4459} |
| `chromeProcesses` | {'int': 4459} |
| `chromeProfiles` | {'int': 4459} |
| `chromeRendererMaxPssKb` | {'int': 4459} |
| `chromeRendererPssKb` | {'int': 4459} |
| `chromeRenderers` | {'int': 4459} |
| `chromeTabs` | {'int': 4459} |
| `chromeTabsProbedProfiles` | {'int': 4459} |
| `chromeUtilityPssKb` | {'int': 4459} |
| `desktopPssKb` | {'int': 4459} |
| `hostPssKb` | {'int': 4459} |
| `kind` | {'str': 4459} |
| `memAvailableKb` | {'int': 4459} |
| `memTotalKb` | {'int': 4459} |
| `otherPssKb` | {'int': 4459} |
| `processes` | {'int': 4459} |
| `pssFallbackProcesses` | {'int': 4459} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
