# sandbox_telemetry_parse — 2026-11-11 18:54:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1769312 lines=3918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3909 |
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
| `chromeBrowserPssKb` | {'int': 3909} |
| `chromeGpuPssKb` | {'int': 3909} |
| `chromeOtherPssKb` | {'int': 3909} |
| `chromeProcesses` | {'int': 3909} |
| `chromeProfiles` | {'int': 3909} |
| `chromeRendererMaxPssKb` | {'int': 3909} |
| `chromeRendererPssKb` | {'int': 3909} |
| `chromeRenderers` | {'int': 3909} |
| `chromeTabs` | {'int': 3909} |
| `chromeTabsProbedProfiles` | {'int': 3909} |
| `chromeUtilityPssKb` | {'int': 3909} |
| `desktopPssKb` | {'int': 3909} |
| `hostPssKb` | {'int': 3909} |
| `kind` | {'str': 3909} |
| `memAvailableKb` | {'int': 3909} |
| `memTotalKb` | {'int': 3909} |
| `otherPssKb` | {'int': 3909} |
| `processes` | {'int': 3909} |
| `pssFallbackProcesses` | {'int': 3909} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
