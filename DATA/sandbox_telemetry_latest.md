# sandbox_telemetry_parse — 2026-11-11 04:43:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1475674 lines=3269
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3260 |
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
| `chromeBrowserPssKb` | {'int': 3260} |
| `chromeGpuPssKb` | {'int': 3260} |
| `chromeOtherPssKb` | {'int': 3260} |
| `chromeProcesses` | {'int': 3260} |
| `chromeProfiles` | {'int': 3260} |
| `chromeRendererMaxPssKb` | {'int': 3260} |
| `chromeRendererPssKb` | {'int': 3260} |
| `chromeRenderers` | {'int': 3260} |
| `chromeTabs` | {'int': 3260} |
| `chromeTabsProbedProfiles` | {'int': 3260} |
| `chromeUtilityPssKb` | {'int': 3260} |
| `desktopPssKb` | {'int': 3260} |
| `hostPssKb` | {'int': 3260} |
| `kind` | {'str': 3260} |
| `memAvailableKb` | {'int': 3260} |
| `memTotalKb` | {'int': 3260} |
| `otherPssKb` | {'int': 3260} |
| `processes` | {'int': 3260} |
| `pssFallbackProcesses` | {'int': 3260} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
