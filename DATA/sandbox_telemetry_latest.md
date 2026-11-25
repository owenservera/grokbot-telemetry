# sandbox_telemetry_parse — 2026-11-25 05:28:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2608187 lines=5779
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5764 |
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
| `chromeBrowserPssKb` | {'int': 5764} |
| `chromeGpuPssKb` | {'int': 5764} |
| `chromeOtherPssKb` | {'int': 5764} |
| `chromeProcesses` | {'int': 5764} |
| `chromeProfiles` | {'int': 5764} |
| `chromeRendererMaxPssKb` | {'int': 5764} |
| `chromeRendererPssKb` | {'int': 5764} |
| `chromeRenderers` | {'int': 5764} |
| `chromeTabs` | {'int': 5764} |
| `chromeTabsProbedProfiles` | {'int': 5764} |
| `chromeUtilityPssKb` | {'int': 5764} |
| `desktopPssKb` | {'int': 5764} |
| `hostPssKb` | {'int': 5764} |
| `kind` | {'str': 5764} |
| `memAvailableKb` | {'int': 5764} |
| `memTotalKb` | {'int': 5764} |
| `otherPssKb` | {'int': 5764} |
| `processes` | {'int': 5764} |
| `pssFallbackProcesses` | {'int': 5764} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
