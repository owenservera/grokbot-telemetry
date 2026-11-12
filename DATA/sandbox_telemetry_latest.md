# sandbox_telemetry_parse — 2026-11-12 11:39:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2111437 lines=4674
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4665 |
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
| `chromeBrowserPssKb` | {'int': 4665} |
| `chromeGpuPssKb` | {'int': 4665} |
| `chromeOtherPssKb` | {'int': 4665} |
| `chromeProcesses` | {'int': 4665} |
| `chromeProfiles` | {'int': 4665} |
| `chromeRendererMaxPssKb` | {'int': 4665} |
| `chromeRendererPssKb` | {'int': 4665} |
| `chromeRenderers` | {'int': 4665} |
| `chromeTabs` | {'int': 4665} |
| `chromeTabsProbedProfiles` | {'int': 4665} |
| `chromeUtilityPssKb` | {'int': 4665} |
| `desktopPssKb` | {'int': 4665} |
| `hostPssKb` | {'int': 4665} |
| `kind` | {'str': 4665} |
| `memAvailableKb` | {'int': 4665} |
| `memTotalKb` | {'int': 4665} |
| `otherPssKb` | {'int': 4665} |
| `processes` | {'int': 4665} |
| `pssFallbackProcesses` | {'int': 4665} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
