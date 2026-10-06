# sandbox_telemetry_parse — 2026-10-06 13:26:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=394178 lines=869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 864 |
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
| `chromeBrowserPssKb` | {'int': 864} |
| `chromeGpuPssKb` | {'int': 864} |
| `chromeOtherPssKb` | {'int': 864} |
| `chromeProcesses` | {'int': 864} |
| `chromeProfiles` | {'int': 864} |
| `chromeRendererMaxPssKb` | {'int': 864} |
| `chromeRendererPssKb` | {'int': 864} |
| `chromeRenderers` | {'int': 864} |
| `chromeTabs` | {'int': 864} |
| `chromeTabsProbedProfiles` | {'int': 864} |
| `chromeUtilityPssKb` | {'int': 864} |
| `desktopPssKb` | {'int': 864} |
| `hostPssKb` | {'int': 864} |
| `kind` | {'str': 864} |
| `memAvailableKb` | {'int': 864} |
| `memTotalKb` | {'int': 864} |
| `otherPssKb` | {'int': 864} |
| `processes` | {'int': 864} |
| `pssFallbackProcesses` | {'int': 864} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
