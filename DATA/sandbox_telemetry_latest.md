# sandbox_telemetry_parse — 2026-11-24 13:05:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2294642 lines=5086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5071 |
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
| `chromeBrowserPssKb` | {'int': 5071} |
| `chromeGpuPssKb` | {'int': 5071} |
| `chromeOtherPssKb` | {'int': 5071} |
| `chromeProcesses` | {'int': 5071} |
| `chromeProfiles` | {'int': 5071} |
| `chromeRendererMaxPssKb` | {'int': 5071} |
| `chromeRendererPssKb` | {'int': 5071} |
| `chromeRenderers` | {'int': 5071} |
| `chromeTabs` | {'int': 5071} |
| `chromeTabsProbedProfiles` | {'int': 5071} |
| `chromeUtilityPssKb` | {'int': 5071} |
| `desktopPssKb` | {'int': 5071} |
| `hostPssKb` | {'int': 5071} |
| `kind` | {'str': 5071} |
| `memAvailableKb` | {'int': 5071} |
| `memTotalKb` | {'int': 5071} |
| `otherPssKb` | {'int': 5071} |
| `processes` | {'int': 5071} |
| `pssFallbackProcesses` | {'int': 5071} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
