# sandbox_telemetry_parse — 2026-10-14 14:28:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=333946 lines=743
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 738 |
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
| `chromeBrowserPssKb` | {'int': 738} |
| `chromeGpuPssKb` | {'int': 738} |
| `chromeOtherPssKb` | {'int': 738} |
| `chromeProcesses` | {'int': 738} |
| `chromeProfiles` | {'int': 738} |
| `chromeRendererMaxPssKb` | {'int': 738} |
| `chromeRendererPssKb` | {'int': 738} |
| `chromeRenderers` | {'int': 738} |
| `chromeTabs` | {'int': 738} |
| `chromeTabsProbedProfiles` | {'int': 738} |
| `chromeUtilityPssKb` | {'int': 738} |
| `desktopPssKb` | {'int': 738} |
| `hostPssKb` | {'int': 738} |
| `kind` | {'str': 738} |
| `memAvailableKb` | {'int': 738} |
| `memTotalKb` | {'int': 738} |
| `otherPssKb` | {'int': 738} |
| `processes` | {'int': 738} |
| `pssFallbackProcesses` | {'int': 738} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
