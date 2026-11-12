# sandbox_telemetry_parse — 2026-11-12 02:19:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1926855 lines=4266
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4257 |
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
| `chromeBrowserPssKb` | {'int': 4257} |
| `chromeGpuPssKb` | {'int': 4257} |
| `chromeOtherPssKb` | {'int': 4257} |
| `chromeProcesses` | {'int': 4257} |
| `chromeProfiles` | {'int': 4257} |
| `chromeRendererMaxPssKb` | {'int': 4257} |
| `chromeRendererPssKb` | {'int': 4257} |
| `chromeRenderers` | {'int': 4257} |
| `chromeTabs` | {'int': 4257} |
| `chromeTabsProbedProfiles` | {'int': 4257} |
| `chromeUtilityPssKb` | {'int': 4257} |
| `desktopPssKb` | {'int': 4257} |
| `hostPssKb` | {'int': 4257} |
| `kind` | {'str': 4257} |
| `memAvailableKb` | {'int': 4257} |
| `memTotalKb` | {'int': 4257} |
| `otherPssKb` | {'int': 4257} |
| `processes` | {'int': 4257} |
| `pssFallbackProcesses` | {'int': 4257} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
