# sandbox_telemetry_parse — 2026-11-24 20:46:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2443139 lines=5414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5399 |
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
| `chromeBrowserPssKb` | {'int': 5399} |
| `chromeGpuPssKb` | {'int': 5399} |
| `chromeOtherPssKb` | {'int': 5399} |
| `chromeProcesses` | {'int': 5399} |
| `chromeProfiles` | {'int': 5399} |
| `chromeRendererMaxPssKb` | {'int': 5399} |
| `chromeRendererPssKb` | {'int': 5399} |
| `chromeRenderers` | {'int': 5399} |
| `chromeTabs` | {'int': 5399} |
| `chromeTabsProbedProfiles` | {'int': 5399} |
| `chromeUtilityPssKb` | {'int': 5399} |
| `desktopPssKb` | {'int': 5399} |
| `hostPssKb` | {'int': 5399} |
| `kind` | {'str': 5399} |
| `memAvailableKb` | {'int': 5399} |
| `memTotalKb` | {'int': 5399} |
| `otherPssKb` | {'int': 5399} |
| `processes` | {'int': 5399} |
| `pssFallbackProcesses` | {'int': 5399} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
