# sandbox_telemetry_parse — 2026-10-27 11:57:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=502342 lines=1114
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1109 |
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
| `chromeBrowserPssKb` | {'int': 1109} |
| `chromeGpuPssKb` | {'int': 1109} |
| `chromeOtherPssKb` | {'int': 1109} |
| `chromeProcesses` | {'int': 1109} |
| `chromeProfiles` | {'int': 1109} |
| `chromeRendererMaxPssKb` | {'int': 1109} |
| `chromeRendererPssKb` | {'int': 1109} |
| `chromeRenderers` | {'int': 1109} |
| `chromeTabs` | {'int': 1109} |
| `chromeTabsProbedProfiles` | {'int': 1109} |
| `chromeUtilityPssKb` | {'int': 1109} |
| `desktopPssKb` | {'int': 1109} |
| `hostPssKb` | {'int': 1109} |
| `kind` | {'str': 1109} |
| `memAvailableKb` | {'int': 1109} |
| `memTotalKb` | {'int': 1109} |
| `otherPssKb` | {'int': 1109} |
| `processes` | {'int': 1109} |
| `pssFallbackProcesses` | {'int': 1109} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
