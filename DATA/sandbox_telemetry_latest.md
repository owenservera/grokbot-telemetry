# sandbox_telemetry_parse — 2026-11-28 15:01:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=933517 lines=2070
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2062 |
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
| `chromeBrowserPssKb` | {'int': 2062} |
| `chromeGpuPssKb` | {'int': 2062} |
| `chromeOtherPssKb` | {'int': 2062} |
| `chromeProcesses` | {'int': 2062} |
| `chromeProfiles` | {'int': 2062} |
| `chromeRendererMaxPssKb` | {'int': 2062} |
| `chromeRendererPssKb` | {'int': 2062} |
| `chromeRenderers` | {'int': 2062} |
| `chromeTabs` | {'int': 2062} |
| `chromeTabsProbedProfiles` | {'int': 2062} |
| `chromeUtilityPssKb` | {'int': 2062} |
| `desktopPssKb` | {'int': 2062} |
| `hostPssKb` | {'int': 2062} |
| `kind` | {'str': 2062} |
| `memAvailableKb` | {'int': 2062} |
| `memTotalKb` | {'int': 2062} |
| `otherPssKb` | {'int': 2062} |
| `processes` | {'int': 2062} |
| `pssFallbackProcesses` | {'int': 2062} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
