# sandbox_telemetry_parse — 2026-10-12 22:57:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=686072 lines=1522
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1517 |
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
| `chromeBrowserPssKb` | {'int': 1517} |
| `chromeGpuPssKb` | {'int': 1517} |
| `chromeOtherPssKb` | {'int': 1517} |
| `chromeProcesses` | {'int': 1517} |
| `chromeProfiles` | {'int': 1517} |
| `chromeRendererMaxPssKb` | {'int': 1517} |
| `chromeRendererPssKb` | {'int': 1517} |
| `chromeRenderers` | {'int': 1517} |
| `chromeTabs` | {'int': 1517} |
| `chromeTabsProbedProfiles` | {'int': 1517} |
| `chromeUtilityPssKb` | {'int': 1517} |
| `desktopPssKb` | {'int': 1517} |
| `hostPssKb` | {'int': 1517} |
| `kind` | {'str': 1517} |
| `memAvailableKb` | {'int': 1517} |
| `memTotalKb` | {'int': 1517} |
| `otherPssKb` | {'int': 1517} |
| `processes` | {'int': 1517} |
| `pssFallbackProcesses` | {'int': 1517} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
