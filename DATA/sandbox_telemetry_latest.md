# sandbox_telemetry_parse — 2026-11-28 07:13:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=784693 lines=1741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1733 |
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
| `chromeBrowserPssKb` | {'int': 1733} |
| `chromeGpuPssKb` | {'int': 1733} |
| `chromeOtherPssKb` | {'int': 1733} |
| `chromeProcesses` | {'int': 1733} |
| `chromeProfiles` | {'int': 1733} |
| `chromeRendererMaxPssKb` | {'int': 1733} |
| `chromeRendererPssKb` | {'int': 1733} |
| `chromeRenderers` | {'int': 1733} |
| `chromeTabs` | {'int': 1733} |
| `chromeTabsProbedProfiles` | {'int': 1733} |
| `chromeUtilityPssKb` | {'int': 1733} |
| `desktopPssKb` | {'int': 1733} |
| `hostPssKb` | {'int': 1733} |
| `kind` | {'str': 1733} |
| `memAvailableKb` | {'int': 1733} |
| `memTotalKb` | {'int': 1733} |
| `otherPssKb` | {'int': 1733} |
| `processes` | {'int': 1733} |
| `pssFallbackProcesses` | {'int': 1733} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
