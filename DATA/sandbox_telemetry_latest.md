# sandbox_telemetry_parse — 2026-10-14 22:36:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=522430 lines=1160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1155 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1155} |
| `chromeGpuPssKb` | {'int': 1155} |
| `chromeOtherPssKb` | {'int': 1155} |
| `chromeProcesses` | {'int': 1155} |
| `chromeProfiles` | {'int': 1155} |
| `chromeRendererMaxPssKb` | {'int': 1155} |
| `chromeRendererPssKb` | {'int': 1155} |
| `chromeRenderers` | {'int': 1155} |
| `chromeTabs` | {'int': 1155} |
| `chromeTabsProbedProfiles` | {'int': 1155} |
| `chromeUtilityPssKb` | {'int': 1155} |
| `desktopPssKb` | {'int': 1155} |
| `hostPssKb` | {'int': 1155} |
| `kind` | {'str': 1155} |
| `memAvailableKb` | {'int': 1155} |
| `memTotalKb` | {'int': 1155} |
| `otherPssKb` | {'int': 1155} |
| `processes` | {'int': 1155} |
| `pssFallbackProcesses` | {'int': 1155} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
