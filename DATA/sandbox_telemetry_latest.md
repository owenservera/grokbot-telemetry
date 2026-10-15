# sandbox_telemetry_parse — 2026-10-15 10:54:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=821202 lines=1821
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1816 |
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
| `chromeBrowserPssKb` | {'int': 1816} |
| `chromeGpuPssKb` | {'int': 1816} |
| `chromeOtherPssKb` | {'int': 1816} |
| `chromeProcesses` | {'int': 1816} |
| `chromeProfiles` | {'int': 1816} |
| `chromeRendererMaxPssKb` | {'int': 1816} |
| `chromeRendererPssKb` | {'int': 1816} |
| `chromeRenderers` | {'int': 1816} |
| `chromeTabs` | {'int': 1816} |
| `chromeTabsProbedProfiles` | {'int': 1816} |
| `chromeUtilityPssKb` | {'int': 1816} |
| `desktopPssKb` | {'int': 1816} |
| `hostPssKb` | {'int': 1816} |
| `kind` | {'str': 1816} |
| `memAvailableKb` | {'int': 1816} |
| `memTotalKb` | {'int': 1816} |
| `otherPssKb` | {'int': 1816} |
| `processes` | {'int': 1816} |
| `pssFallbackProcesses` | {'int': 1816} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
