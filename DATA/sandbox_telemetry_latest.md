# sandbox_telemetry_parse — 2026-10-14 12:09:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=277446 lines=618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 613 |
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
| `chromeBrowserPssKb` | {'int': 613} |
| `chromeGpuPssKb` | {'int': 613} |
| `chromeOtherPssKb` | {'int': 613} |
| `chromeProcesses` | {'int': 613} |
| `chromeProfiles` | {'int': 613} |
| `chromeRendererMaxPssKb` | {'int': 613} |
| `chromeRendererPssKb` | {'int': 613} |
| `chromeRenderers` | {'int': 613} |
| `chromeTabs` | {'int': 613} |
| `chromeTabsProbedProfiles` | {'int': 613} |
| `chromeUtilityPssKb` | {'int': 613} |
| `desktopPssKb` | {'int': 613} |
| `hostPssKb` | {'int': 613} |
| `kind` | {'str': 613} |
| `memAvailableKb` | {'int': 613} |
| `memTotalKb` | {'int': 613} |
| `otherPssKb` | {'int': 613} |
| `processes` | {'int': 613} |
| `pssFallbackProcesses` | {'int': 613} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
