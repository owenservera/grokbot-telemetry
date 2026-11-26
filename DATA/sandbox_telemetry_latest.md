# sandbox_telemetry_parse — 2026-11-26 03:04:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3044144 lines=6743
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6728 |
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
| `chromeBrowserPssKb` | {'int': 6728} |
| `chromeGpuPssKb` | {'int': 6728} |
| `chromeOtherPssKb` | {'int': 6728} |
| `chromeProcesses` | {'int': 6728} |
| `chromeProfiles` | {'int': 6728} |
| `chromeRendererMaxPssKb` | {'int': 6728} |
| `chromeRendererPssKb` | {'int': 6728} |
| `chromeRenderers` | {'int': 6728} |
| `chromeTabs` | {'int': 6728} |
| `chromeTabsProbedProfiles` | {'int': 6728} |
| `chromeUtilityPssKb` | {'int': 6728} |
| `desktopPssKb` | {'int': 6728} |
| `hostPssKb` | {'int': 6728} |
| `kind` | {'str': 6728} |
| `memAvailableKb` | {'int': 6728} |
| `memTotalKb` | {'int': 6728} |
| `otherPssKb` | {'int': 6728} |
| `processes` | {'int': 6728} |
| `pssFallbackProcesses` | {'int': 6728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
