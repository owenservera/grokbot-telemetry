# sandbox_telemetry_parse — 2026-10-15 06:41:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=715886 lines=1588
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1583 |
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
| `chromeBrowserPssKb` | {'int': 1583} |
| `chromeGpuPssKb` | {'int': 1583} |
| `chromeOtherPssKb` | {'int': 1583} |
| `chromeProcesses` | {'int': 1583} |
| `chromeProfiles` | {'int': 1583} |
| `chromeRendererMaxPssKb` | {'int': 1583} |
| `chromeRendererPssKb` | {'int': 1583} |
| `chromeRenderers` | {'int': 1583} |
| `chromeTabs` | {'int': 1583} |
| `chromeTabsProbedProfiles` | {'int': 1583} |
| `chromeUtilityPssKb` | {'int': 1583} |
| `desktopPssKb` | {'int': 1583} |
| `hostPssKb` | {'int': 1583} |
| `kind` | {'str': 1583} |
| `memAvailableKb` | {'int': 1583} |
| `memTotalKb` | {'int': 1583} |
| `otherPssKb` | {'int': 1583} |
| `processes` | {'int': 1583} |
| `pssFallbackProcesses` | {'int': 1583} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
