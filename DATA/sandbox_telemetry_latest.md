# sandbox_telemetry_parse — 2026-11-26 20:59:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=83391 lines=191
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 183 |
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
| `chromeBrowserPssKb` | {'int': 183} |
| `chromeGpuPssKb` | {'int': 183} |
| `chromeOtherPssKb` | {'int': 183} |
| `chromeProcesses` | {'int': 183} |
| `chromeProfiles` | {'int': 183} |
| `chromeRendererMaxPssKb` | {'int': 183} |
| `chromeRendererPssKb` | {'int': 183} |
| `chromeRenderers` | {'int': 183} |
| `chromeTabs` | {'int': 183} |
| `chromeTabsProbedProfiles` | {'int': 183} |
| `chromeUtilityPssKb` | {'int': 183} |
| `desktopPssKb` | {'int': 183} |
| `hostPssKb` | {'int': 183} |
| `kind` | {'str': 183} |
| `memAvailableKb` | {'int': 183} |
| `memTotalKb` | {'int': 183} |
| `otherPssKb` | {'int': 183} |
| `processes` | {'int': 183} |
| `pssFallbackProcesses` | {'int': 183} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
