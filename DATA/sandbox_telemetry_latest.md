# sandbox_telemetry_parse — 2026-11-18 13:31:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=838424 lines=1860
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1853 |
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
| `chromeBrowserPssKb` | {'int': 1853} |
| `chromeGpuPssKb` | {'int': 1853} |
| `chromeOtherPssKb` | {'int': 1853} |
| `chromeProcesses` | {'int': 1853} |
| `chromeProfiles` | {'int': 1853} |
| `chromeRendererMaxPssKb` | {'int': 1853} |
| `chromeRendererPssKb` | {'int': 1853} |
| `chromeRenderers` | {'int': 1853} |
| `chromeTabs` | {'int': 1853} |
| `chromeTabsProbedProfiles` | {'int': 1853} |
| `chromeUtilityPssKb` | {'int': 1853} |
| `desktopPssKb` | {'int': 1853} |
| `hostPssKb` | {'int': 1853} |
| `kind` | {'str': 1853} |
| `memAvailableKb` | {'int': 1853} |
| `memTotalKb` | {'int': 1853} |
| `otherPssKb` | {'int': 1853} |
| `processes` | {'int': 1853} |
| `pssFallbackProcesses` | {'int': 1853} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
