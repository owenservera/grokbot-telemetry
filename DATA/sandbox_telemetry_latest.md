# sandbox_telemetry_parse — 2026-11-27 21:06:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=590588 lines=1312
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1304 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1304} |
| `chromeGpuPssKb` | {'int': 1304} |
| `chromeOtherPssKb` | {'int': 1304} |
| `chromeProcesses` | {'int': 1304} |
| `chromeProfiles` | {'int': 1304} |
| `chromeRendererMaxPssKb` | {'int': 1304} |
| `chromeRendererPssKb` | {'int': 1304} |
| `chromeRenderers` | {'int': 1304} |
| `chromeTabs` | {'int': 1304} |
| `chromeTabsProbedProfiles` | {'int': 1304} |
| `chromeUtilityPssKb` | {'int': 1304} |
| `desktopPssKb` | {'int': 1304} |
| `hostPssKb` | {'int': 1304} |
| `kind` | {'str': 1304} |
| `memAvailableKb` | {'int': 1304} |
| `memTotalKb` | {'int': 1304} |
| `otherPssKb` | {'int': 1304} |
| `processes` | {'int': 1304} |
| `pssFallbackProcesses` | {'int': 1304} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
