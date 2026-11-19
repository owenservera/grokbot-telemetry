# sandbox_telemetry_parse — 2026-11-19 22:31:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1468894 lines=3257
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3246 |
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
| `chromeBrowserPssKb` | {'int': 3246} |
| `chromeGpuPssKb` | {'int': 3246} |
| `chromeOtherPssKb` | {'int': 3246} |
| `chromeProcesses` | {'int': 3246} |
| `chromeProfiles` | {'int': 3246} |
| `chromeRendererMaxPssKb` | {'int': 3246} |
| `chromeRendererPssKb` | {'int': 3246} |
| `chromeRenderers` | {'int': 3246} |
| `chromeTabs` | {'int': 3246} |
| `chromeTabsProbedProfiles` | {'int': 3246} |
| `chromeUtilityPssKb` | {'int': 3246} |
| `desktopPssKb` | {'int': 3246} |
| `hostPssKb` | {'int': 3246} |
| `kind` | {'str': 3246} |
| `memAvailableKb` | {'int': 3246} |
| `memTotalKb` | {'int': 3246} |
| `otherPssKb` | {'int': 3246} |
| `processes` | {'int': 3246} |
| `pssFallbackProcesses` | {'int': 3246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
