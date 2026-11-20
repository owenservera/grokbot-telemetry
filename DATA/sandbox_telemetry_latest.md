# sandbox_telemetry_parse — 2026-11-20 14:26:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1753279 lines=3886
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3875 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3875} |
| `chromeGpuPssKb` | {'int': 3875} |
| `chromeOtherPssKb` | {'int': 3875} |
| `chromeProcesses` | {'int': 3875} |
| `chromeProfiles` | {'int': 3875} |
| `chromeRendererMaxPssKb` | {'int': 3875} |
| `chromeRendererPssKb` | {'int': 3875} |
| `chromeRenderers` | {'int': 3875} |
| `chromeTabs` | {'int': 3875} |
| `chromeTabsProbedProfiles` | {'int': 3875} |
| `chromeUtilityPssKb` | {'int': 3875} |
| `desktopPssKb` | {'int': 3875} |
| `hostPssKb` | {'int': 3875} |
| `kind` | {'str': 3875} |
| `memAvailableKb` | {'int': 3875} |
| `memTotalKb` | {'int': 3875} |
| `otherPssKb` | {'int': 3875} |
| `processes` | {'int': 3875} |
| `pssFallbackProcesses` | {'int': 3875} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
