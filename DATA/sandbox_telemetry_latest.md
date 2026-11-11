# sandbox_telemetry_parse — 2026-11-11 02:50:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1440864 lines=3192
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3183 |
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
| `chromeBrowserPssKb` | {'int': 3183} |
| `chromeGpuPssKb` | {'int': 3183} |
| `chromeOtherPssKb` | {'int': 3183} |
| `chromeProcesses` | {'int': 3183} |
| `chromeProfiles` | {'int': 3183} |
| `chromeRendererMaxPssKb` | {'int': 3183} |
| `chromeRendererPssKb` | {'int': 3183} |
| `chromeRenderers` | {'int': 3183} |
| `chromeTabs` | {'int': 3183} |
| `chromeTabsProbedProfiles` | {'int': 3183} |
| `chromeUtilityPssKb` | {'int': 3183} |
| `desktopPssKb` | {'int': 3183} |
| `hostPssKb` | {'int': 3183} |
| `kind` | {'str': 3183} |
| `memAvailableKb` | {'int': 3183} |
| `memTotalKb` | {'int': 3183} |
| `otherPssKb` | {'int': 3183} |
| `processes` | {'int': 3183} |
| `pssFallbackProcesses` | {'int': 3183} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
