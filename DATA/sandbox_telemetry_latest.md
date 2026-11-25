# sandbox_telemetry_parse — 2026-11-25 14:42:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2797679 lines=6198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6183 |
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
| `chromeBrowserPssKb` | {'int': 6183} |
| `chromeGpuPssKb` | {'int': 6183} |
| `chromeOtherPssKb` | {'int': 6183} |
| `chromeProcesses` | {'int': 6183} |
| `chromeProfiles` | {'int': 6183} |
| `chromeRendererMaxPssKb` | {'int': 6183} |
| `chromeRendererPssKb` | {'int': 6183} |
| `chromeRenderers` | {'int': 6183} |
| `chromeTabs` | {'int': 6183} |
| `chromeTabsProbedProfiles` | {'int': 6183} |
| `chromeUtilityPssKb` | {'int': 6183} |
| `desktopPssKb` | {'int': 6183} |
| `hostPssKb` | {'int': 6183} |
| `kind` | {'str': 6183} |
| `memAvailableKb` | {'int': 6183} |
| `memTotalKb` | {'int': 6183} |
| `otherPssKb` | {'int': 6183} |
| `processes` | {'int': 6183} |
| `pssFallbackProcesses` | {'int': 6183} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
