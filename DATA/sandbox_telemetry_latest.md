# sandbox_telemetry_parse — 2026-10-14 17:43:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=404006 lines=898
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 893 |
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
| `chromeBrowserPssKb` | {'int': 893} |
| `chromeGpuPssKb` | {'int': 893} |
| `chromeOtherPssKb` | {'int': 893} |
| `chromeProcesses` | {'int': 893} |
| `chromeProfiles` | {'int': 893} |
| `chromeRendererMaxPssKb` | {'int': 893} |
| `chromeRendererPssKb` | {'int': 893} |
| `chromeRenderers` | {'int': 893} |
| `chromeTabs` | {'int': 893} |
| `chromeTabsProbedProfiles` | {'int': 893} |
| `chromeUtilityPssKb` | {'int': 893} |
| `desktopPssKb` | {'int': 893} |
| `hostPssKb` | {'int': 893} |
| `kind` | {'str': 893} |
| `memAvailableKb` | {'int': 893} |
| `memTotalKb` | {'int': 893} |
| `otherPssKb` | {'int': 893} |
| `processes` | {'int': 893} |
| `pssFallbackProcesses` | {'int': 893} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
