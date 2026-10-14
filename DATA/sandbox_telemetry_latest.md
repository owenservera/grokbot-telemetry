# sandbox_telemetry_parse — 2026-10-14 12:58:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=296882 lines=661
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 656 |
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
| `chromeBrowserPssKb` | {'int': 656} |
| `chromeGpuPssKb` | {'int': 656} |
| `chromeOtherPssKb` | {'int': 656} |
| `chromeProcesses` | {'int': 656} |
| `chromeProfiles` | {'int': 656} |
| `chromeRendererMaxPssKb` | {'int': 656} |
| `chromeRendererPssKb` | {'int': 656} |
| `chromeRenderers` | {'int': 656} |
| `chromeTabs` | {'int': 656} |
| `chromeTabsProbedProfiles` | {'int': 656} |
| `chromeUtilityPssKb` | {'int': 656} |
| `desktopPssKb` | {'int': 656} |
| `hostPssKb` | {'int': 656} |
| `kind` | {'str': 656} |
| `memAvailableKb` | {'int': 656} |
| `memTotalKb` | {'int': 656} |
| `otherPssKb` | {'int': 656} |
| `processes` | {'int': 656} |
| `pssFallbackProcesses` | {'int': 656} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
