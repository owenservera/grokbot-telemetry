# sandbox_telemetry_parse — 2026-11-09 20:57:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=835406 lines=1854
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1845 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1845} |
| `chromeGpuPssKb` | {'int': 1845} |
| `chromeOtherPssKb` | {'int': 1845} |
| `chromeProcesses` | {'int': 1845} |
| `chromeProfiles` | {'int': 1845} |
| `chromeRendererMaxPssKb` | {'int': 1845} |
| `chromeRendererPssKb` | {'int': 1845} |
| `chromeRenderers` | {'int': 1845} |
| `chromeTabs` | {'int': 1845} |
| `chromeTabsProbedProfiles` | {'int': 1845} |
| `chromeUtilityPssKb` | {'int': 1845} |
| `desktopPssKb` | {'int': 1845} |
| `hostPssKb` | {'int': 1845} |
| `kind` | {'str': 1845} |
| `memAvailableKb` | {'int': 1845} |
| `memTotalKb` | {'int': 1845} |
| `otherPssKb` | {'int': 1845} |
| `processes` | {'int': 1845} |
| `pssFallbackProcesses` | {'int': 1845} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
