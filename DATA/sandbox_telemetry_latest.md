# sandbox_telemetry_parse — 2026-11-24 20:04:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2429565 lines=5384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5369 |
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
| `chromeBrowserPssKb` | {'int': 5369} |
| `chromeGpuPssKb` | {'int': 5369} |
| `chromeOtherPssKb` | {'int': 5369} |
| `chromeProcesses` | {'int': 5369} |
| `chromeProfiles` | {'int': 5369} |
| `chromeRendererMaxPssKb` | {'int': 5369} |
| `chromeRendererPssKb` | {'int': 5369} |
| `chromeRenderers` | {'int': 5369} |
| `chromeTabs` | {'int': 5369} |
| `chromeTabsProbedProfiles` | {'int': 5369} |
| `chromeUtilityPssKb` | {'int': 5369} |
| `desktopPssKb` | {'int': 5369} |
| `hostPssKb` | {'int': 5369} |
| `kind` | {'str': 5369} |
| `memAvailableKb` | {'int': 5369} |
| `memTotalKb` | {'int': 5369} |
| `otherPssKb` | {'int': 5369} |
| `processes` | {'int': 5369} |
| `pssFallbackProcesses` | {'int': 5369} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
