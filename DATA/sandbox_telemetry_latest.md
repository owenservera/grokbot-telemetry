# sandbox_telemetry_parse — 2026-10-27 09:39:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=445724 lines=989
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 984 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 984} |
| `chromeGpuPssKb` | {'int': 984} |
| `chromeOtherPssKb` | {'int': 984} |
| `chromeProcesses` | {'int': 984} |
| `chromeProfiles` | {'int': 984} |
| `chromeRendererMaxPssKb` | {'int': 984} |
| `chromeRendererPssKb` | {'int': 984} |
| `chromeRenderers` | {'int': 984} |
| `chromeTabs` | {'int': 984} |
| `chromeTabsProbedProfiles` | {'int': 984} |
| `chromeUtilityPssKb` | {'int': 984} |
| `desktopPssKb` | {'int': 984} |
| `hostPssKb` | {'int': 984} |
| `kind` | {'str': 984} |
| `memAvailableKb` | {'int': 984} |
| `memTotalKb` | {'int': 984} |
| `otherPssKb` | {'int': 984} |
| `processes` | {'int': 984} |
| `pssFallbackProcesses` | {'int': 984} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
