# sandbox_telemetry_parse — 2026-11-23 19:37:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1962669 lines=4352
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4337 |
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
| `chromeBrowserPssKb` | {'int': 4337} |
| `chromeGpuPssKb` | {'int': 4337} |
| `chromeOtherPssKb` | {'int': 4337} |
| `chromeProcesses` | {'int': 4337} |
| `chromeProfiles` | {'int': 4337} |
| `chromeRendererMaxPssKb` | {'int': 4337} |
| `chromeRendererPssKb` | {'int': 4337} |
| `chromeRenderers` | {'int': 4337} |
| `chromeTabs` | {'int': 4337} |
| `chromeTabsProbedProfiles` | {'int': 4337} |
| `chromeUtilityPssKb` | {'int': 4337} |
| `desktopPssKb` | {'int': 4337} |
| `hostPssKb` | {'int': 4337} |
| `kind` | {'str': 4337} |
| `memAvailableKb` | {'int': 4337} |
| `memTotalKb` | {'int': 4337} |
| `otherPssKb` | {'int': 4337} |
| `processes` | {'int': 4337} |
| `pssFallbackProcesses` | {'int': 4337} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
