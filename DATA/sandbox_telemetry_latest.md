# sandbox_telemetry_parse — 2026-10-15 10:22:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=808998 lines=1794
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1789 |
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
| `chromeBrowserPssKb` | {'int': 1789} |
| `chromeGpuPssKb` | {'int': 1789} |
| `chromeOtherPssKb` | {'int': 1789} |
| `chromeProcesses` | {'int': 1789} |
| `chromeProfiles` | {'int': 1789} |
| `chromeRendererMaxPssKb` | {'int': 1789} |
| `chromeRendererPssKb` | {'int': 1789} |
| `chromeRenderers` | {'int': 1789} |
| `chromeTabs` | {'int': 1789} |
| `chromeTabsProbedProfiles` | {'int': 1789} |
| `chromeUtilityPssKb` | {'int': 1789} |
| `desktopPssKb` | {'int': 1789} |
| `hostPssKb` | {'int': 1789} |
| `kind` | {'str': 1789} |
| `memAvailableKb` | {'int': 1789} |
| `memTotalKb` | {'int': 1789} |
| `otherPssKb` | {'int': 1789} |
| `processes` | {'int': 1789} |
| `pssFallbackProcesses` | {'int': 1789} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
