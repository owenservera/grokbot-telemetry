# sandbox_telemetry_parse — 2026-11-09 19:10:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=803285 lines=1783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1774 |
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
| `chromeBrowserPssKb` | {'int': 1774} |
| `chromeGpuPssKb` | {'int': 1774} |
| `chromeOtherPssKb` | {'int': 1774} |
| `chromeProcesses` | {'int': 1774} |
| `chromeProfiles` | {'int': 1774} |
| `chromeRendererMaxPssKb` | {'int': 1774} |
| `chromeRendererPssKb` | {'int': 1774} |
| `chromeRenderers` | {'int': 1774} |
| `chromeTabs` | {'int': 1774} |
| `chromeTabsProbedProfiles` | {'int': 1774} |
| `chromeUtilityPssKb` | {'int': 1774} |
| `desktopPssKb` | {'int': 1774} |
| `hostPssKb` | {'int': 1774} |
| `kind` | {'str': 1774} |
| `memAvailableKb` | {'int': 1774} |
| `memTotalKb` | {'int': 1774} |
| `otherPssKb` | {'int': 1774} |
| `processes` | {'int': 1774} |
| `pssFallbackProcesses` | {'int': 1774} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
