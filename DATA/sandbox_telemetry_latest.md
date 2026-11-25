# sandbox_telemetry_parse — 2026-11-25 10:59:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2727597 lines=6043
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6028 |
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
| `chromeBrowserPssKb` | {'int': 6028} |
| `chromeGpuPssKb` | {'int': 6028} |
| `chromeOtherPssKb` | {'int': 6028} |
| `chromeProcesses` | {'int': 6028} |
| `chromeProfiles` | {'int': 6028} |
| `chromeRendererMaxPssKb` | {'int': 6028} |
| `chromeRendererPssKb` | {'int': 6028} |
| `chromeRenderers` | {'int': 6028} |
| `chromeTabs` | {'int': 6028} |
| `chromeTabsProbedProfiles` | {'int': 6028} |
| `chromeUtilityPssKb` | {'int': 6028} |
| `desktopPssKb` | {'int': 6028} |
| `hostPssKb` | {'int': 6028} |
| `kind` | {'str': 6028} |
| `memAvailableKb` | {'int': 6028} |
| `memTotalKb` | {'int': 6028} |
| `otherPssKb` | {'int': 6028} |
| `processes` | {'int': 6028} |
| `pssFallbackProcesses` | {'int': 6028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
