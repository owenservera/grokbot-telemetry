# sandbox_telemetry_parse — 2026-10-15 08:07:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=752950 lines=1670
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1665 |
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
| `chromeBrowserPssKb` | {'int': 1665} |
| `chromeGpuPssKb` | {'int': 1665} |
| `chromeOtherPssKb` | {'int': 1665} |
| `chromeProcesses` | {'int': 1665} |
| `chromeProfiles` | {'int': 1665} |
| `chromeRendererMaxPssKb` | {'int': 1665} |
| `chromeRendererPssKb` | {'int': 1665} |
| `chromeRenderers` | {'int': 1665} |
| `chromeTabs` | {'int': 1665} |
| `chromeTabsProbedProfiles` | {'int': 1665} |
| `chromeUtilityPssKb` | {'int': 1665} |
| `desktopPssKb` | {'int': 1665} |
| `hostPssKb` | {'int': 1665} |
| `kind` | {'str': 1665} |
| `memAvailableKb` | {'int': 1665} |
| `memTotalKb` | {'int': 1665} |
| `otherPssKb` | {'int': 1665} |
| `processes` | {'int': 1665} |
| `pssFallbackProcesses` | {'int': 1665} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
