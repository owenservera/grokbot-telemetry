# sandbox_telemetry_parse — 2026-10-14 12:32:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=287390 lines=640
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 635 |
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
| `chromeBrowserPssKb` | {'int': 635} |
| `chromeGpuPssKb` | {'int': 635} |
| `chromeOtherPssKb` | {'int': 635} |
| `chromeProcesses` | {'int': 635} |
| `chromeProfiles` | {'int': 635} |
| `chromeRendererMaxPssKb` | {'int': 635} |
| `chromeRendererPssKb` | {'int': 635} |
| `chromeRenderers` | {'int': 635} |
| `chromeTabs` | {'int': 635} |
| `chromeTabsProbedProfiles` | {'int': 635} |
| `chromeUtilityPssKb` | {'int': 635} |
| `desktopPssKb` | {'int': 635} |
| `hostPssKb` | {'int': 635} |
| `kind` | {'str': 635} |
| `memAvailableKb` | {'int': 635} |
| `memTotalKb` | {'int': 635} |
| `otherPssKb` | {'int': 635} |
| `processes` | {'int': 635} |
| `pssFallbackProcesses` | {'int': 635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
