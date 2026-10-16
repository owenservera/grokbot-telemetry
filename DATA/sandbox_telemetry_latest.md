# sandbox_telemetry_parse — 2026-10-16 06:42:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=196993 lines=736
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 478 |
| `memory_sample` | 249 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 249} |
| `chromeGpuPssKb` | {'int': 249} |
| `chromeOtherPssKb` | {'int': 249} |
| `chromeProcesses` | {'int': 249} |
| `chromeProfiles` | {'int': 249} |
| `chromeRendererMaxPssKb` | {'int': 249} |
| `chromeRendererPssKb` | {'int': 249} |
| `chromeRenderers` | {'int': 249} |
| `chromeTabs` | {'int': 249} |
| `chromeTabsProbedProfiles` | {'int': 249} |
| `chromeUtilityPssKb` | {'int': 249} |
| `desktopPssKb` | {'int': 249} |
| `hostPssKb` | {'int': 249} |
| `kind` | {'str': 249} |
| `memAvailableKb` | {'int': 249} |
| `memTotalKb` | {'int': 249} |
| `otherPssKb` | {'int': 249} |
| `processes` | {'int': 249} |
| `pssFallbackProcesses` | {'int': 249} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 475} |
| `display` | {'int': 478} |
| `kind` | {'str': 478} |
| `processes` | {'int': 478} |
| `pssKb` | {'int': 478} |
| `rendererMaxPssKb` | {'int': 478} |
| `renderers` | {'int': 478} |
| `tabs` | {'int': 477} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
