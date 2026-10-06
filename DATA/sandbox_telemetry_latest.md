# sandbox_telemetry_parse — 2026-10-06 08:53:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=272426 lines=602
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 597 |
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
| `chromeBrowserPssKb` | {'int': 597} |
| `chromeGpuPssKb` | {'int': 597} |
| `chromeOtherPssKb` | {'int': 597} |
| `chromeProcesses` | {'int': 597} |
| `chromeProfiles` | {'int': 597} |
| `chromeRendererMaxPssKb` | {'int': 597} |
| `chromeRendererPssKb` | {'int': 597} |
| `chromeRenderers` | {'int': 597} |
| `chromeTabs` | {'int': 597} |
| `chromeTabsProbedProfiles` | {'int': 597} |
| `chromeUtilityPssKb` | {'int': 597} |
| `desktopPssKb` | {'int': 597} |
| `hostPssKb` | {'int': 597} |
| `kind` | {'str': 597} |
| `memAvailableKb` | {'int': 597} |
| `memTotalKb` | {'int': 597} |
| `otherPssKb` | {'int': 597} |
| `processes` | {'int': 597} |
| `pssFallbackProcesses` | {'int': 597} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
