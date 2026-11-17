# sandbox_telemetry_parse — 2026-11-17 19:53:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=512847 lines=1140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1133 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1133} |
| `chromeGpuPssKb` | {'int': 1133} |
| `chromeOtherPssKb` | {'int': 1133} |
| `chromeProcesses` | {'int': 1133} |
| `chromeProfiles` | {'int': 1133} |
| `chromeRendererMaxPssKb` | {'int': 1133} |
| `chromeRendererPssKb` | {'int': 1133} |
| `chromeRenderers` | {'int': 1133} |
| `chromeTabs` | {'int': 1133} |
| `chromeTabsProbedProfiles` | {'int': 1133} |
| `chromeUtilityPssKb` | {'int': 1133} |
| `desktopPssKb` | {'int': 1133} |
| `hostPssKb` | {'int': 1133} |
| `kind` | {'str': 1133} |
| `memAvailableKb` | {'int': 1133} |
| `memTotalKb` | {'int': 1133} |
| `otherPssKb` | {'int': 1133} |
| `processes` | {'int': 1133} |
| `pssFallbackProcesses` | {'int': 1133} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
