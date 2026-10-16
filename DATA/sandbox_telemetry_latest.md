# sandbox_telemetry_parse — 2026-10-16 15:46:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=592646 lines=2215
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1464 |
| `memory_sample` | 742 |
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
| `chromeBrowserPssKb` | {'int': 742} |
| `chromeGpuPssKb` | {'int': 742} |
| `chromeOtherPssKb` | {'int': 742} |
| `chromeProcesses` | {'int': 742} |
| `chromeProfiles` | {'int': 742} |
| `chromeRendererMaxPssKb` | {'int': 742} |
| `chromeRendererPssKb` | {'int': 742} |
| `chromeRenderers` | {'int': 742} |
| `chromeTabs` | {'int': 742} |
| `chromeTabsProbedProfiles` | {'int': 742} |
| `chromeUtilityPssKb` | {'int': 742} |
| `desktopPssKb` | {'int': 742} |
| `hostPssKb` | {'int': 742} |
| `kind` | {'str': 742} |
| `memAvailableKb` | {'int': 742} |
| `memTotalKb` | {'int': 742} |
| `otherPssKb` | {'int': 742} |
| `processes` | {'int': 742} |
| `pssFallbackProcesses` | {'int': 742} |

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
| `cpuMillicores` | {'int': 1461} |
| `display` | {'int': 1464} |
| `kind` | {'str': 1464} |
| `processes` | {'int': 1464} |
| `pssKb` | {'int': 1464} |
| `rendererMaxPssKb` | {'int': 1464} |
| `renderers` | {'int': 1464} |
| `tabs` | {'int': 1463} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
