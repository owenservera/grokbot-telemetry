# sandbox_telemetry_parse — 2026-11-26 09:54:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3197986 lines=7083
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7068 |
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
| `chromeBrowserPssKb` | {'int': 7068} |
| `chromeGpuPssKb` | {'int': 7068} |
| `chromeOtherPssKb` | {'int': 7068} |
| `chromeProcesses` | {'int': 7068} |
| `chromeProfiles` | {'int': 7068} |
| `chromeRendererMaxPssKb` | {'int': 7068} |
| `chromeRendererPssKb` | {'int': 7068} |
| `chromeRenderers` | {'int': 7068} |
| `chromeTabs` | {'int': 7068} |
| `chromeTabsProbedProfiles` | {'int': 7068} |
| `chromeUtilityPssKb` | {'int': 7068} |
| `desktopPssKb` | {'int': 7068} |
| `hostPssKb` | {'int': 7068} |
| `kind` | {'str': 7068} |
| `memAvailableKb` | {'int': 7068} |
| `memTotalKb` | {'int': 7068} |
| `otherPssKb` | {'int': 7068} |
| `processes` | {'int': 7068} |
| `pssFallbackProcesses` | {'int': 7068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
