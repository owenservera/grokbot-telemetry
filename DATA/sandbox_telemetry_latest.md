# sandbox_telemetry_parse — 2026-10-16 18:56:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=741957 lines=2773
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1836 |
| `memory_sample` | 928 |
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
| `chromeBrowserPssKb` | {'int': 928} |
| `chromeGpuPssKb` | {'int': 928} |
| `chromeOtherPssKb` | {'int': 928} |
| `chromeProcesses` | {'int': 928} |
| `chromeProfiles` | {'int': 928} |
| `chromeRendererMaxPssKb` | {'int': 928} |
| `chromeRendererPssKb` | {'int': 928} |
| `chromeRenderers` | {'int': 928} |
| `chromeTabs` | {'int': 928} |
| `chromeTabsProbedProfiles` | {'int': 928} |
| `chromeUtilityPssKb` | {'int': 928} |
| `desktopPssKb` | {'int': 928} |
| `hostPssKb` | {'int': 928} |
| `kind` | {'str': 928} |
| `memAvailableKb` | {'int': 928} |
| `memTotalKb` | {'int': 928} |
| `otherPssKb` | {'int': 928} |
| `processes` | {'int': 928} |
| `pssFallbackProcesses` | {'int': 928} |

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
| `cpuMillicores` | {'int': 1833} |
| `display` | {'int': 1836} |
| `kind` | {'str': 1836} |
| `processes` | {'int': 1836} |
| `pssKb` | {'int': 1836} |
| `rendererMaxPssKb` | {'int': 1836} |
| `renderers` | {'int': 1836} |
| `tabs` | {'int': 1835} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
