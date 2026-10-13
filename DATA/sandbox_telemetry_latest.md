# sandbox_telemetry_parse — 2026-10-13 09:11:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=973219 lines=2417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1974 |
| `chrome_profile_sample` | 435 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1974} |
| `chromeGpuPssKb` | {'int': 1974} |
| `chromeOtherPssKb` | {'int': 1974} |
| `chromeProcesses` | {'int': 1974} |
| `chromeProfiles` | {'int': 1974} |
| `chromeRendererMaxPssKb` | {'int': 1974} |
| `chromeRendererPssKb` | {'int': 1974} |
| `chromeRenderers` | {'int': 1974} |
| `chromeTabs` | {'int': 1974} |
| `chromeTabsProbedProfiles` | {'int': 1974} |
| `chromeUtilityPssKb` | {'int': 1974} |
| `desktopPssKb` | {'int': 1974} |
| `hostPssKb` | {'int': 1974} |
| `kind` | {'str': 1974} |
| `memAvailableKb` | {'int': 1974} |
| `memTotalKb` | {'int': 1974} |
| `otherPssKb` | {'int': 1974} |
| `processes` | {'int': 1974} |
| `pssFallbackProcesses` | {'int': 1974} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 434} |
| `display` | {'int': 435} |
| `kind` | {'str': 435} |
| `processes` | {'int': 435} |
| `pssKb` | {'int': 435} |
| `rendererMaxPssKb` | {'int': 435} |
| `renderers` | {'int': 435} |
| `tabs` | {'int': 435} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
