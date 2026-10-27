# sandbox_telemetry_parse — 2026-10-27 12:05:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=505513 lines=1121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1116 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1116} |
| `chromeGpuPssKb` | {'int': 1116} |
| `chromeOtherPssKb` | {'int': 1116} |
| `chromeProcesses` | {'int': 1116} |
| `chromeProfiles` | {'int': 1116} |
| `chromeRendererMaxPssKb` | {'int': 1116} |
| `chromeRendererPssKb` | {'int': 1116} |
| `chromeRenderers` | {'int': 1116} |
| `chromeTabs` | {'int': 1116} |
| `chromeTabsProbedProfiles` | {'int': 1116} |
| `chromeUtilityPssKb` | {'int': 1116} |
| `desktopPssKb` | {'int': 1116} |
| `hostPssKb` | {'int': 1116} |
| `kind` | {'str': 1116} |
| `memAvailableKb` | {'int': 1116} |
| `memTotalKb` | {'int': 1116} |
| `otherPssKb` | {'int': 1116} |
| `processes` | {'int': 1116} |
| `pssFallbackProcesses` | {'int': 1116} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
