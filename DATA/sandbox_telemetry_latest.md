# sandbox_telemetry_parse — 2026-10-15 01:54:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=602434 lines=1337
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1332 |
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
| `chromeBrowserPssKb` | {'int': 1332} |
| `chromeGpuPssKb` | {'int': 1332} |
| `chromeOtherPssKb` | {'int': 1332} |
| `chromeProcesses` | {'int': 1332} |
| `chromeProfiles` | {'int': 1332} |
| `chromeRendererMaxPssKb` | {'int': 1332} |
| `chromeRendererPssKb` | {'int': 1332} |
| `chromeRenderers` | {'int': 1332} |
| `chromeTabs` | {'int': 1332} |
| `chromeTabsProbedProfiles` | {'int': 1332} |
| `chromeUtilityPssKb` | {'int': 1332} |
| `desktopPssKb` | {'int': 1332} |
| `hostPssKb` | {'int': 1332} |
| `kind` | {'str': 1332} |
| `memAvailableKb` | {'int': 1332} |
| `memTotalKb` | {'int': 1332} |
| `otherPssKb` | {'int': 1332} |
| `processes` | {'int': 1332} |
| `pssFallbackProcesses` | {'int': 1332} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
