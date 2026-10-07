# sandbox_telemetry_parse — 2026-10-07 05:42:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=836221 lines=1838
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1833 |
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
| `chromeBrowserPssKb` | {'int': 1833} |
| `chromeGpuPssKb` | {'int': 1833} |
| `chromeOtherPssKb` | {'int': 1833} |
| `chromeProcesses` | {'int': 1833} |
| `chromeProfiles` | {'int': 1833} |
| `chromeRendererMaxPssKb` | {'int': 1833} |
| `chromeRendererPssKb` | {'int': 1833} |
| `chromeRenderers` | {'int': 1833} |
| `chromeTabs` | {'int': 1833} |
| `chromeTabsProbedProfiles` | {'int': 1833} |
| `chromeUtilityPssKb` | {'int': 1833} |
| `desktopPssKb` | {'int': 1833} |
| `hostPssKb` | {'int': 1833} |
| `kind` | {'str': 1833} |
| `memAvailableKb` | {'int': 1833} |
| `memTotalKb` | {'int': 1833} |
| `otherPssKb` | {'int': 1833} |
| `processes` | {'int': 1833} |
| `pssFallbackProcesses` | {'int': 1833} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
