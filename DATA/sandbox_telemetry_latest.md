# sandbox_telemetry_parse — 2026-10-27 00:09:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=217821 lines=485
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 480 |
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
| `chromeBrowserPssKb` | {'int': 480} |
| `chromeGpuPssKb` | {'int': 480} |
| `chromeOtherPssKb` | {'int': 480} |
| `chromeProcesses` | {'int': 480} |
| `chromeProfiles` | {'int': 480} |
| `chromeRendererMaxPssKb` | {'int': 480} |
| `chromeRendererPssKb` | {'int': 480} |
| `chromeRenderers` | {'int': 480} |
| `chromeTabs` | {'int': 480} |
| `chromeTabsProbedProfiles` | {'int': 480} |
| `chromeUtilityPssKb` | {'int': 480} |
| `desktopPssKb` | {'int': 480} |
| `hostPssKb` | {'int': 480} |
| `kind` | {'str': 480} |
| `memAvailableKb` | {'int': 480} |
| `memTotalKb` | {'int': 480} |
| `otherPssKb` | {'int': 480} |
| `processes` | {'int': 480} |
| `pssFallbackProcesses` | {'int': 480} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
