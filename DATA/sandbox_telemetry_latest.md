# sandbox_telemetry_parse — 2026-11-24 20:37:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2439515 lines=5406
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5391 |
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
| `chromeBrowserPssKb` | {'int': 5391} |
| `chromeGpuPssKb` | {'int': 5391} |
| `chromeOtherPssKb` | {'int': 5391} |
| `chromeProcesses` | {'int': 5391} |
| `chromeProfiles` | {'int': 5391} |
| `chromeRendererMaxPssKb` | {'int': 5391} |
| `chromeRendererPssKb` | {'int': 5391} |
| `chromeRenderers` | {'int': 5391} |
| `chromeTabs` | {'int': 5391} |
| `chromeTabsProbedProfiles` | {'int': 5391} |
| `chromeUtilityPssKb` | {'int': 5391} |
| `desktopPssKb` | {'int': 5391} |
| `hostPssKb` | {'int': 5391} |
| `kind` | {'str': 5391} |
| `memAvailableKb` | {'int': 5391} |
| `memTotalKb` | {'int': 5391} |
| `otherPssKb` | {'int': 5391} |
| `processes` | {'int': 5391} |
| `pssFallbackProcesses` | {'int': 5391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
