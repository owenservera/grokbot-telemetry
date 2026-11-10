# sandbox_telemetry_parse — 2026-11-10 23:54:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1386138 lines=3071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3062 |
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
| `chromeBrowserPssKb` | {'int': 3062} |
| `chromeGpuPssKb` | {'int': 3062} |
| `chromeOtherPssKb` | {'int': 3062} |
| `chromeProcesses` | {'int': 3062} |
| `chromeProfiles` | {'int': 3062} |
| `chromeRendererMaxPssKb` | {'int': 3062} |
| `chromeRendererPssKb` | {'int': 3062} |
| `chromeRenderers` | {'int': 3062} |
| `chromeTabs` | {'int': 3062} |
| `chromeTabsProbedProfiles` | {'int': 3062} |
| `chromeUtilityPssKb` | {'int': 3062} |
| `desktopPssKb` | {'int': 3062} |
| `hostPssKb` | {'int': 3062} |
| `kind` | {'str': 3062} |
| `memAvailableKb` | {'int': 3062} |
| `memTotalKb` | {'int': 3062} |
| `otherPssKb` | {'int': 3062} |
| `processes` | {'int': 3062} |
| `pssFallbackProcesses` | {'int': 3062} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
