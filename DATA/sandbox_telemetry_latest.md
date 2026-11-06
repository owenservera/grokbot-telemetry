# sandbox_telemetry_parse — 2026-11-06 13:59:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=40347 lines=95
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 88 |
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
| `chromeBrowserPssKb` | {'int': 88} |
| `chromeGpuPssKb` | {'int': 88} |
| `chromeOtherPssKb` | {'int': 88} |
| `chromeProcesses` | {'int': 88} |
| `chromeProfiles` | {'int': 88} |
| `chromeRendererMaxPssKb` | {'int': 88} |
| `chromeRendererPssKb` | {'int': 88} |
| `chromeRenderers` | {'int': 88} |
| `chromeTabs` | {'int': 88} |
| `chromeTabsProbedProfiles` | {'int': 88} |
| `chromeUtilityPssKb` | {'int': 88} |
| `desktopPssKb` | {'int': 88} |
| `hostPssKb` | {'int': 88} |
| `kind` | {'str': 88} |
| `memAvailableKb` | {'int': 88} |
| `memTotalKb` | {'int': 88} |
| `otherPssKb` | {'int': 88} |
| `processes` | {'int': 88} |
| `pssFallbackProcesses` | {'int': 88} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
