# sandbox_telemetry_parse — 2026-11-18 16:06:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=884101 lines=1961
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1954 |
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
| `chromeBrowserPssKb` | {'int': 1954} |
| `chromeGpuPssKb` | {'int': 1954} |
| `chromeOtherPssKb` | {'int': 1954} |
| `chromeProcesses` | {'int': 1954} |
| `chromeProfiles` | {'int': 1954} |
| `chromeRendererMaxPssKb` | {'int': 1954} |
| `chromeRendererPssKb` | {'int': 1954} |
| `chromeRenderers` | {'int': 1954} |
| `chromeTabs` | {'int': 1954} |
| `chromeTabsProbedProfiles` | {'int': 1954} |
| `chromeUtilityPssKb` | {'int': 1954} |
| `desktopPssKb` | {'int': 1954} |
| `hostPssKb` | {'int': 1954} |
| `kind` | {'str': 1954} |
| `memAvailableKb` | {'int': 1954} |
| `memTotalKb` | {'int': 1954} |
| `otherPssKb` | {'int': 1954} |
| `processes` | {'int': 1954} |
| `pssFallbackProcesses` | {'int': 1954} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
