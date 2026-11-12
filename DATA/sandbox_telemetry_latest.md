# sandbox_telemetry_parse — 2026-11-12 09:57:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2073448 lines=4590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4581 |
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
| `chromeBrowserPssKb` | {'int': 4581} |
| `chromeGpuPssKb` | {'int': 4581} |
| `chromeOtherPssKb` | {'int': 4581} |
| `chromeProcesses` | {'int': 4581} |
| `chromeProfiles` | {'int': 4581} |
| `chromeRendererMaxPssKb` | {'int': 4581} |
| `chromeRendererPssKb` | {'int': 4581} |
| `chromeRenderers` | {'int': 4581} |
| `chromeTabs` | {'int': 4581} |
| `chromeTabsProbedProfiles` | {'int': 4581} |
| `chromeUtilityPssKb` | {'int': 4581} |
| `desktopPssKb` | {'int': 4581} |
| `hostPssKb` | {'int': 4581} |
| `kind` | {'str': 4581} |
| `memAvailableKb` | {'int': 4581} |
| `memTotalKb` | {'int': 4581} |
| `otherPssKb` | {'int': 4581} |
| `processes` | {'int': 4581} |
| `pssFallbackProcesses` | {'int': 4581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
