# sandbox_telemetry_parse — 2026-11-10 20:57:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1316898 lines=2918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2909 |
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
| `chromeBrowserPssKb` | {'int': 2909} |
| `chromeGpuPssKb` | {'int': 2909} |
| `chromeOtherPssKb` | {'int': 2909} |
| `chromeProcesses` | {'int': 2909} |
| `chromeProfiles` | {'int': 2909} |
| `chromeRendererMaxPssKb` | {'int': 2909} |
| `chromeRendererPssKb` | {'int': 2909} |
| `chromeRenderers` | {'int': 2909} |
| `chromeTabs` | {'int': 2909} |
| `chromeTabsProbedProfiles` | {'int': 2909} |
| `chromeUtilityPssKb` | {'int': 2909} |
| `desktopPssKb` | {'int': 2909} |
| `hostPssKb` | {'int': 2909} |
| `kind` | {'str': 2909} |
| `memAvailableKb` | {'int': 2909} |
| `memTotalKb` | {'int': 2909} |
| `otherPssKb` | {'int': 2909} |
| `processes` | {'int': 2909} |
| `pssFallbackProcesses` | {'int': 2909} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
